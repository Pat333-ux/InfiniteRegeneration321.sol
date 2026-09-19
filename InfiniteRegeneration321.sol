pragma solidity ^0.8.0;

contract InfiniteRegeneration321 {
    uint256 public pulse;
    uint256 public constant MAX_PULSE = 321;

    event PulseAdvanced(uint256 indexed newPulse);

    function advancePulse() external {
        pulse += 1;

        if (pulse > MAX_PULSE) {
            pulse = 0;
        }

        emit PulseAdvanced(pulse);
    }
}
