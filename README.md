Try these commands    
ruby extconf.rb    
make    
irb -r./example    


Usage   
2.2.1 :001 > a = Example::IntMap.new    
 => std::map<int,int,std::less< int >,std::allocator< std::pair< int const,int > > > {}     
2.2.1 :002 > a[1] = 2    
 => 2     
2.2.1 :003 > a[6] = -12    
 => -12     
2.2.1 :004 > a[4] = 92    
 => 92     
2.2.1 :005 > a    
 => std::map<int,int,std::less< int >,std::allocator< std::pair< int const,int > > > {1=>2,4=>92,6=>-12}     
2.2.1 :006 > b = Example::FindWithDefault(a, 1, 92)    
 => 2     
2.2.1 :007 > b = Example::FindWithDefault(a, 2, 92)    
 => 92     
2.2.1 :008 > b = Example::FindWithDefault(a, 6, 62)    
 => -12     
2.2.1 :009 > b = Example::FindWithDefault(a, 4, 62)    
 => 92     
2.2.1 :010 > b = Example::FindWithDefault(a, 5, 62)    
 => 62     
2.2.1 :011 > b = Example::LookupOrInsert(a, 5, 62)    
 => #<SWIG::TYPE_p_std__mapT_int_int_std__lessT_int_t_std__allocatorT_std__pairT_int_const_int_t_t_t__value_type__second_type:0x00000002624ee8 @__swigtype__="_p_std__mapT_int_int_std__lessT_int_t_std__allocatorT_std__pairT_int_const_int_t_t_t__value_type__second_type">     
2.2.1 :012 > a    
 => std::map<int,int,std::less< int >,std::allocator< std::pair< int const,int > > > {1=>2,4=>92,5=>62,6=>-12}     
