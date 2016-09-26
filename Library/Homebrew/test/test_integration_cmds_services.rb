require "integration_cmds_tests"

class IntegrationCommandTestServices < IntegrationCommandTests
  def test_services
    needs_test_cmd_taps
    needs_macos
    setup_remote_tap("homebrew/services")
    assert_equal "Warning: No services available to control with `brew services`",
      cmd("services", "list")
  end
end
