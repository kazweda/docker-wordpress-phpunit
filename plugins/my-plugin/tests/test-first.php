<?php
/**
 * Class SampleTest
 *
 * @package My_Plugin
 */

/**
 * Sample test case.
 */
class SampleTest extends WP_UnitTestCase {

	/**
	 * A single example test.
	 */
	public function test_sample() {
    $myPlug = new My_Plugin();
		$this->assertEquals( 'hello world!!', $myPlug->make_string() );
	}
}
