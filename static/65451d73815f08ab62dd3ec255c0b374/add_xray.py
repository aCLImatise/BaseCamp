from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Add_Xray_V0_1_0 = CommandToolBuilder(tool="add_xray", base_command=["add_xray"], inputs=[ToolInput(tag="in_prm_top", input_type=String(), position=0, doc=InputDocumentation(doc=": amber topology, input and output files")), ToolInput(tag="in_sym_lib", input_type=String(), position=1, doc=InputDocumentation(doc=": symmetry operator file, CCP4 format (symop.lib)")), ToolInput(tag="in_atoms_f", input_type=String(), position=2, doc=InputDocumentation(doc=": scatter factor file, CCP4 format (atomsf.lib)")), ToolInput(tag="in_sg_name", input_type=String(), position=3, doc=InputDocumentation(doc=": spacegroup name (P1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Xray_V0_1_0().translate("wdl", allow_empty_container=True)

