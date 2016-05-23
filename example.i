%module "example"
%{
   #include <map_util.h>
%}

%include <std_map.i>
%template(IntMap)  std::map<int,int>;

namespace tensorflow {
namespace gtl {

template <class Collection>
const typename Collection::value_type::second_type* FindOrNull(
    const Collection& collection,
    const typename Collection::key_type& key);
%template(FindOrNull) FindOrNull<std::map<int,int> >;

template <class Collection>
typename Collection::value_type::second_type FindPtrOrNull(
    const Collection& collection,
    const typename Collection::key_type& key);
%template(FindPtrOrNull) FindPtrOrNull<std::map<int,int> >;

template <typename Collection>
const typename Collection::mapped_type& FindWithDefault(
    const Collection& collection,
    const typename Collection::key_type& key,
    const typename Collection::mapped_type& value) ;
%template(FindWithDefault) FindWithDefault<std::map<int,int> >;

template <class Collection>
bool InsertIfNotPresent(
    Collection* const collection,
    const typename Collection::key_type& key,
    const typename Collection::mapped_type& value) ;
%template(InsertIfNotPresent) FindWithDefault<std::map<int,int> >;

template <class Collection>
typename Collection::value_type::second_type& LookupOrInsert(
    Collection* const collection,
    const typename Collection::key_type& key,
    const typename Collection::mapped_type& value);
%template(LookupOrInsert) LookupOrInsert<std::map<int,int> >;

}
}