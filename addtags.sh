for ii in {0..200}; do
    tagname=v"$(git show dev~${ii}:src/changelog.h | grep "VERSION" --color=never | grep -o "[.0-9]\+")" && git tag $tagname dev~${ii} 
    #tagname=v"$(git show dev~${ii}:src/constants.h | grep "VERSION" --color=never | grep -o "[.0-9]\+")" && git tag $tagname dev~${ii} 
    #tagname=v"$(git show dev~${ii}:src/constants.h | grep "VERSION" --color=never | grep -o "[.0-9]\+")" && echo $tagname
done
