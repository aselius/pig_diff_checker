#!/bin/bash
ALIVEEVENTS=$(diff --strip-trailing-cr <(sort ./aliveevents/part-r-00000) <(sort ../sample_test/expected/pig/aliveevents.csv))
DEADEVENTS=$(diff --strip-trailing-cr <(sort ./deadevents/part-r-00000) <(sort ../sample_test/expected/pig/deadevents.csv))
FILTERED=$(diff --strip-trailing-cr <(sort ./filtered/part-r-00000) <(sort ../sample_test/expected/pig/filtered.csv))
FEATURES=$(diff --strip-trailing-cr <(sort ./features/part-m-00000) <(sort ../sample_test/expected/pig/features))
FEATURESAGG=$(diff --strip-trailing-cr <(sort ./features_aggregate/part-r-00000) <(sort ../sample_test/expected/pig/features_aggregate.csv))
FEATURESMAP=$(diff --strip-trailing-cr <(sort ./features_map/part-r-00000) <(sort ../sample_test/expected/pig/features_map.csv))
FEATURESNORM=$(diff --strip-trailing-cr <(sort ./features_normalized/part-r-00000) <(sort ../sample_test/expected/pig/features_normalized.csv))
SAMPLES=$(diff --strip-trailing-cr <(sort ./samples/part-r-00000) <(sort ../sample_test/expected/pig/samples))

if [ -z "$ALIVEEVENTS" ]
then
    echo "Alive events test pass"
else
    echo "Alive events computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$DEADEVENTS" ]
then
    echo "Dead events test pass"
else
    echo "Dead events computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$FILTERED" ]
then
    echo "Filtered test pass"
else
    echo "Filtered computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$FEATURES" ]
then
    echo "Features test pass"
else
    echo "Features computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$FEATURESAGG" ]
then
    echo "Features_aggregate test pass"
else
    echo "Features_aggregate computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$FEATURESMAP" ]
then
    echo "Features_map test pass"
else
    echo "Features_map computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$FEATURESNORM" ]
then
    echo "Features_normalized test pass"
else
    echo "Features_normalized computed with Pig with sample_events and sample_mortality does not match expected output"
fi

if [ -z "$SAMPLES" ]
then
    echo "Samples test pass"
else
    echo "Samples computed with Pig with sample_events and sample_mortality does not match expected output"
fi