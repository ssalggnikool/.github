#!/bin/sh

if [ -f iOS/Delegates/AppDelegate.swift ]; then
    cat $GITHUB_WORKSPACE/Bbuild/default.swift >> $GITHUB_WORKSPACE/Feather/iOS/Delegates/AppDelegate.swift
    sed -i '' '/func application(/a\
        addBDefaultRepos();
        ' $GITHUB_WORKSPACE/Feather/iOS/Delegates/AppDelegate.swift

else
    echo "AppDelegate.swift does not exist."
fi