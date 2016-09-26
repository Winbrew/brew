require "integration_cmds_tests"

class IntegrationCommandTestUnpack < IntegrationCommandTests
  def test_unpack
    setup_test_formula "testball"

    mktmpdir do |path|
      cmd "unpack", "testball", "--destdir=#{path}"
      assert File.directory?("#{path}/testball-0.1"),
        "The tarball should be unpacked"
    end
  end
end
