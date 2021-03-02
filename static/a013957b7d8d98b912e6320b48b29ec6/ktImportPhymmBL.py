from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportphymmbl_V0_1_0 = CommandToolBuilder(tool="ktImportPhymmBL", base_command=["ktImportPhymmBL"], inputs=[ToolInput(tag="in_phy_mm_bl_results", input_type=String(), position=0, doc=InputDocumentation(doc="PhymmBL results files (results.03.*). Results can also be\nfrom Phymm alone (results.01.*), but [-p] must be\nspecified. By default, separate datasets will be created\nfor each input (see [-c]).")), ToolInput(tag="in_magnitudes", input_type=String(), position=1, doc=InputDocumentation(doc="Optional file listing query IDs with magnitudes, separated\nby tabs. This can be used to account for read length or\ncontig depth to obtain a more accurate representation of\nabundance. By default, query sequences without specified\nmagnitudes will be assigned a magnitude of 1. Magnitude\nfiles for assemblies in ACE format can be created with\nktGetContigMagnitudes.")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart\n(if multiple input files are present and [-c] is not\nspecified). By default, the basename of the file will be\nused.\n_________"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportphymmbl_V0_1_0().translate("wdl")

