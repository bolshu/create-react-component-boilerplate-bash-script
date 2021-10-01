mkdir $1
cd $1

# create files
cp ../templates/component.txt $1.tsx
cp ../templates/test.txt $1.test.tsx
cp ../templates/types.txt types.ts
cp ../templates/index.txt index.ts

# replace component name
perl -i -pe "s/NAME/$1/" *
# replace generics
perl -i -pe "s/<NAME/<$1/" *
# replace exports
perl -i -pe "s/\.\/NAME/\.\/$1/" *
