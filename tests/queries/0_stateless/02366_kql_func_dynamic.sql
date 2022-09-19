set dialect = 'kusto';
print '-- array_length()';
print array_length(dynamic(['John', 'Denver', 'Bob', 'Marley'])) == 4;
print array_length(dynamic([1, 2, 3])) == 3;
print '-- array_sum()';
print array_sum(dynamic([2, 5, 3])) == 10;
print array_sum(dynamic([2.5, 5.5, 3])) == 11;
print '-- array_index_of()';
print array_index_of(dynamic(['John', 'Denver', 'Bob', 'Marley']), 'Marley');
print array_index_of(dynamic([1, 2, 3]), 2);
print '-- array_iif()';
print array_iif(dynamic([true,false,true]), dynamic([1,2,3]), dynamic([4,5,6]));
print array_iif(dynamic([1,0,1]), dynamic([1,2,3]), dynamic([4,5,6]));
print array_iif(dynamic([true,false,true]), dynamic([1,2]), dynamic([4,5,6]));
print array_iif(dynamic(['a','b','c']), dynamic([1,2,3]), dynamic([4,5,6]));
print '-- array_concat()';
print array_concat(dynamic([1,2,3]),dynamic([4,5,6]));
print '-- array_reverse()';
print array_reverse(dynamic([]));
print array_reverse(dynamic([1]));
print array_reverse(dynamic([1,2,3,4]));
print array_reverse(dynamic(["this", "is", "an", "example"]));
print '-- array_rotate_left()';
print array_rotate_left(dynamic([]), 0);
print array_rotate_left(dynamic([]), 500);
print array_rotate_left(dynamic([]), -500);
print array_rotate_left(dynamic([1,2,3,4,5]), 2);
print array_rotate_left(dynamic([1,2,3,4,5]), 5);
print array_rotate_left(dynamic([1,2,3,4,5]), 7);
print array_rotate_left(dynamic([1,2,3,4,5]), -2);
print array_rotate_left(dynamic([1,2,3,4,5]), -5);
print array_rotate_left(dynamic([1,2,3,4,5]), -7);
print '-- array_rotate_right()';
print array_rotate_right(dynamic([]), 0);
print array_rotate_right(dynamic([]), 500);
print array_rotate_right(dynamic([]), -500);
print array_rotate_right(dynamic([1,2,3,4,5]), 2);
print array_rotate_right(dynamic([1,2,3,4,5]), 5);
print array_rotate_right(dynamic([1,2,3,4,5]), 7);
print array_rotate_right(dynamic([1,2,3,4,5]), -2);
print array_rotate_right(dynamic([1,2,3,4,5]), -5);
print array_rotate_right(dynamic([1,2,3,4,5]), -7);
print '-- array_shift_left()';
print array_shift_left(dynamic([]), 0);
print array_shift_left(dynamic([]), 555);
print array_shift_left(dynamic([]), -555);
print array_shift_left(dynamic([1,2,3,4,5]), 2);
print array_shift_left(dynamic([1,2,3,4,5]), -2);
print array_shift_left(dynamic([1,2,3,4,5]), 2, -1);
print array_shift_left(dynamic(['a', 'b', 'c']), 2);
print '-- array_shift_right()';
print array_shift_left(dynamic([]), 0);
print array_shift_left(dynamic([]), 555);
print array_shift_left(dynamic([]), -555);
print array_shift_right(dynamic([1,2,3,4,5]), -2);
print array_shift_right(dynamic([1,2,3,4,5]), 2);
print array_shift_right(dynamic([1,2,3,4,5]), -2, -1);
print array_shift_right(dynamic(['a', 'b', 'c']), -2);
print '-- array_slice()';
print array_slice(dynamic([1,2,3]), 1, 2);
print array_slice(dynamic([1,2,3,4,5]), -3, -2);
print '-- array_split()';
print array_split(dynamic([1,2,3,4,5]), dynamic([1,-2]));
print array_split(dynamic([1,2,3,4,5]), 2);
print array_split(dynamic([1,2,3,4,5]), dynamic([1,3]));
print array_split(dynamic([1,2,3,4,5]), dynamic([-1,-2]));
print '-- array_sort_asc()';
print t = array_sort_asc(dynamic([null, 'd', 'a', 'c', 'c']));
print t = array_sort_asc(dynamic([4, 1, 3, 2]));
print t = array_sort_asc(dynamic(['b', 'a', 'c']), dynamic(['q', 'p', 'r']))[1];
print array_sort_asc(dynamic(['q', 'p', 'r']), dynamic(['clickhouse','hello', 'world']));
print t = array_sort_asc( dynamic(['d', null, 'a', 'c', 'c']) , false);
print t = array_sort_asc( dynamic(['d', null, 'a', 'c', 'c']) , 1 > 2);
print t = array_sort_asc( dynamic([null, null, null]) , false);
print array_sort_asc(dynamic([2, 1, null,3, null]), dynamic([20, 10, 40, 30, 50]), 1 < 2)[1];
print array_sort_asc(dynamic(['1','3','4','5','2']),dynamic(["a","b","c","d","e"]), dynamic(["a","b","c","d","e"]), dynamic(["a","b","c","d","e"]))[4];
print array_sort_asc(split("John,Paul,George,Ringo", ","));
print array_sort_asc(dynamic([null,"blue","yellow","green",null]));
print v=array_sort_asc(dynamic([null,"blue","yellow","green",null]), false);
print '-- array_sort_desc()';
print t = array_sort_desc(dynamic([null, 'd', 'a', 'c', 'c']));
print t = array_sort_desc(dynamic([4, 1, 3, 2]));
print t = array_sort_desc(dynamic(['b', 'a', 'c']), dynamic(['q', 'p', 'r']))[1];
print array_sort_desc(dynamic(['q', 'p', 'r']), dynamic(['clickhouse','hello', 'world']));
print t = array_sort_desc( dynamic(['d', null, 'a', 'c', 'c']) , false);
print t = array_sort_desc( dynamic(['d', null, 'a', 'c', 'c']) , 1 > 2);
print t = array_sort_desc( dynamic([null, null, null]) , false);
print array_sort_desc(dynamic([2, 1, null,3, null]), dynamic([20, 10, 40, 30, 50]), 1 < 2)[1];
print array_sort_desc(dynamic(['1','3','4','5','2']),dynamic(["a","b","c","d","e"]), dynamic(["a","b","c","d","e"]), dynamic(["a","b","c","d","e"]))[4];
print array_sort_desc(split("John,Paul,George,Ringo", ","));
print array_sort_desc(dynamic([null,"blue","yellow","green",null]));
print v=array_sort_desc(dynamic([null,"blue","yellow","green",null]), false);
print '-- jaccard_index()';
print jaccard_index(dynamic([1, 1, 2, 2, 3, 3]), dynamic([1, 2, 3, 4, 4, 4]));
print jaccard_index(dynamic([1, 2, 3]), dynamic([]));
print jaccard_index(dynamic([]), dynamic([1, 2, 3, 4]));
print jaccard_index(dynamic([]), dynamic([]));
print jaccard_index(dynamic([1, 2, 3]), dynamic([4, 5, 6, 7]));
print jaccard_index(dynamic(['a', 's', 'd']), dynamic(['f', 'd', 's', 'a']));
print jaccard_index(dynamic(['Chewbacca', 'Darth Vader', 'Han Solo']), dynamic(['Darth Sidious', 'Darth Vader']));
print '-- pack_array()';
print pack_array(); -- { clientError NUMBER_OF_ARGUMENTS_DOESNT_MATCH }
print x = 1 | extend y = x * 2 | extend z = y * 2 | extend pack_array(x,y,z);
print pack_array(strcat('a', 'b'), format_ipv4(42), tostring(4.2));
print '-- repeat()';
print repeat(1, 0);
print repeat(1, 3);
print repeat("asd", 3);
print repeat(timespan(1d), 3);
print repeat(true, 3);
print '-- set_difference()';
print set_difference(dynamic([]), dynamic([]));
print set_difference(dynamic([]), dynamic([9]));
print set_difference(dynamic([]), dynamic(["asd"]));
print set_difference(dynamic([1, 1, 2, 2, 3, 3]), dynamic([1, 2, 3]));
print array_sort_asc(set_difference(dynamic([1, 4, 2, 3, 5, 4, 6]), dynamic([1, 2, 3])))[1];
print set_difference(dynamic([4]), dynamic([1, 2, 3]));
print array_sort_asc(set_difference(dynamic([1, 2, 3, 4, 5]), dynamic([5]), dynamic([2, 4])))[1];
print array_sort_asc(set_difference(dynamic([1, 2, 3]), dynamic([])))[1];
print array_sort_asc(set_difference(dynamic(['a', 's', 'd']), dynamic(['a', 'f'])))[1];
print array_sort_asc(set_difference(dynamic(['Chewbacca', 'Darth Vader', 'Han Solo']), dynamic(['Darth Sidious', 'Darth Vader'])))[1];
print '-- set_has_element()';
print set_has_element(dynamic([]), 9);
print set_has_element(dynamic(["this", "is", "an", "example"]), "example");
print set_has_element(dynamic(["this", "is", "an", "example"]), "examplee");
print set_has_element(dynamic([1, 2, 3]), 2);
print set_has_element(dynamic([1, 2, 3, 4.2]), 4);
print '-- set_intersect()';
print set_intersect(dynamic([]), dynamic([]));
print array_sort_asc(set_intersect(dynamic([1, 1, 2, 2, 3, 3]), dynamic([1, 2, 3])))[1];
print array_sort_asc(set_intersect(dynamic([1, 4, 2, 3, 5, 4, 6]), dynamic([1, 2, 3])))[1];
print set_intersect(dynamic([4]), dynamic([1, 2, 3]));
print set_intersect(dynamic([1, 2, 3, 4, 5]), dynamic([1, 3, 5]), dynamic([2, 5]));
print set_intersect(dynamic([1, 2, 3]), dynamic([]));
print set_intersect(dynamic(['a', 's', 'd']), dynamic(['a', 'f']));
print set_intersect(dynamic(['Chewbacca', 'Darth Vader', 'Han Solo']), dynamic(['Darth Sidious', 'Darth Vader']));
print '-- set_union()';
print set_union(dynamic([]), dynamic([]));
print array_sort_asc(set_union(dynamic([1, 1, 2, 2, 3, 3]), dynamic([1, 2, 3])))[1];
print array_sort_asc(set_union(dynamic([1, 4, 2, 3, 5, 4, 6]), dynamic([1, 2, 3])))[1];
print array_sort_asc(set_union(dynamic([4]), dynamic([1, 2, 3])))[1];
print array_sort_asc(set_union(dynamic([1, 3, 4]), dynamic([5]), dynamic([2, 4])))[1];
print array_sort_asc(set_union(dynamic([1, 2, 3]), dynamic([])))[1];
print array_sort_asc(set_union(dynamic(['a', 's', 'd']), dynamic(['a', 'f'])))[1];
print array_sort_asc(set_union(dynamic(['Chewbacca', 'Darth Vader', 'Han Solo']), dynamic(['Darth Sidious', 'Darth Vader'])))[1];
print '-- zip()';
print zip(dynamic([]), dynamic([]));
print zip(dynamic([1,3,5]), dynamic([2,4,6]));
print zip(dynamic(['Darth','Master']), dynamic(['Vader','Yoda']), dynamic(['has a suit','doesn\'t have a suit']));
print zip(dynamic([1,2,3]), dynamic([10,20]));
print zip(dynamic([]), dynamic([1,2,3]));
