from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rust_Synergy_V0_1_0 = CommandToolBuilder(tool="rust_synergy", base_command=["rust_synergy"], inputs=[ToolInput(tag="in_directory_path_outputfile", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory  path to outputfile, default is 'synergy'")), ToolInput(tag="in_rust_amino_file", input_type=String(), position=0, doc=InputDocumentation(doc="path to file produced from 'rust_amino'")), ToolInput(tag="in_rust_tripeptide_file", input_type=String(), position=1, doc=InputDocumentation(doc="path to file produced from 'rust_tripeptide'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rust_Synergy_V0_1_0().translate("wdl", allow_empty_container=True)

