from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bam_Ref_Tab_Py_V0_1_0 = CommandToolBuilder(tool="bam_ref_tab.py", base_command=["bam_ref_tab.py"], inputs=[ToolInput(tag="in_tab_separated_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Tab separated file to save reference table.")), ToolInput(tag="in_be_quiet_print", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not print progress bar (False).")), ToolInput(tag="in_save_read_strand", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Save read strand in output (False).")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Ref_Tab_Py_V0_1_0().translate("wdl", allow_empty_container=True)

