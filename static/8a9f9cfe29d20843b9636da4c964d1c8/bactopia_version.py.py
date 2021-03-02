from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Bactopia_Version_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_version.py", base_command=["bactopia-version.py"], inputs=[ToolInput(tag="in_bac_topia", input_type=Directory(optional=True), prefix="--bactopia", doc=InputDocumentation(doc="Directory where Bactopia repository is stored.")), ToolInput(tag="in_str", input_type=String(), position=0, doc=InputDocumentation(doc="Name of the Bactopia tool to execute.")), ToolInput(tag="in_fast_ani", input_type=String(), position=0, doc=InputDocumentation(doc="Pairwise average nucleotide identity")), ToolInput(tag="in_gt_db", input_type=String(), position=1, doc=InputDocumentation(doc="Identify marker genes and assign taxonomic classifications")), ToolInput(tag="in_phylo_flash", input_type=String(), position=2, doc=InputDocumentation(doc="16s assembly, alignment and tree")), ToolInput(tag="in_roar_y", input_type=String(), position=3, doc=InputDocumentation(doc="Pan-genome with optional core-genome tree.")), ToolInput(tag="in_summary", input_type=String(), position=4, doc=InputDocumentation(doc="A report summarizing Bactopia project"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Version_Py_V0_1_0().translate("wdl", allow_empty_container=True)

