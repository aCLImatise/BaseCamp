from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genefamilyintegrator_V0_1_0 = CommandToolBuilder(tool="GeneFamilyIntegrator", base_command=["GeneFamilyIntegrator"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genefamilyintegrator_V0_1_0().translate("wdl", allow_empty_container=True)

