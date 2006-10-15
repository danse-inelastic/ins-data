#!/usr/bin/env python

def preparePackage( package, sourceRoot = "." ):
    package.changeRoot( sourceRoot )

    #------------------------------------------------------------
    #dependencies
    #
    from distutils_adpt.paths.Paths import Paths
    #------------------------------------------------------------

    #--------------------------------------------------------
    # now add subdirs
    #
    #data
    package.addData(
        sourceDir = ".",
        destDir = "ins-data")

    return package


if __name__ == "__main__":
    #------------------------------------------------------------
    #init the package
    from distutils_adpt.Package import Package
    package = Package('ins-data', '0.1.0a')

    preparePackage( package )

    #setup
    package.setup()

