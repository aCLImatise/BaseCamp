from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Relocate_Absencefinder_Py_Usr_Target_Genome_Path_V0_1_0 = CommandToolBuilder(tool="relocaTE_absenceFinder.py_usr_target_genome_path", base_command=["relocaTE_absenceFinder.py", "usr_target", "genome_path"], inputs=[ToolInput(tag="in_te", input_type=String(), position=0, doc=InputDocumentation(doc="= sys.argv[4] ## repeat to analyze: ALL or mPing/other te name "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Relocate_Absencefinder_Py_Usr_Target_Genome_Path_V0_1_0().translate("wdl", allow_empty_container=True)

