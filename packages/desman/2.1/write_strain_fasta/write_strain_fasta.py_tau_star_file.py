from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Write_Strain_Fasta_Py_Tau_Star_File_V0_1_0 = CommandToolBuilder(tool="write_strain_fasta.py_tau_star_file", base_command=["write_strain_fasta.py", "tau_star_file"], inputs=[ToolInput(tag="in_write_strain_fasta_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tau_star_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_et_as_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_base", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Write_Strain_Fasta_Py_Tau_Star_File_V0_1_0().translate("wdl", allow_empty_container=True)

