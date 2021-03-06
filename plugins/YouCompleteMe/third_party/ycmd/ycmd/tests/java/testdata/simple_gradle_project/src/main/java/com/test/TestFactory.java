package com.test;

/**
 * @title TestFactory
 *
 * TestFactory is a pointless thing that OO programmers think is necessary
 * because they read about it in a book.
 *
 * All it does is instantiate the (one and only) concrete AbstractTestWidget
 * implementation
 */
public class TestFactory {
  public AbstractTestWidget getWidget( String info ) {
    AbstractTestWidget w = new TestWidgetImpl( info );
    return w;
  }
}
