from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fftw_Wisdom_To_Conf_V0_1_0 = CommandToolBuilder(tool="fftw_wisdom_to_conf", base_command=["fftw-wisdom-to-conf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fftw_Wisdom_To_Conf_V0_1_0().translate("wdl", allow_empty_container=True)

