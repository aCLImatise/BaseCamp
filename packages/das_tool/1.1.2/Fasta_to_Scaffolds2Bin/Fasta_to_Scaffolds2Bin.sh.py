from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasta_To_Scaffolds2Bin_Sh_V0_1_0 = CommandToolBuilder(tool="Fasta_to_Scaffolds2Bin.sh", base_command=["Fasta_to_Scaffolds2Bin.sh"], inputs=[ToolInput(tag="in_extension", input_type=Boolean(optional=True), prefix="--extension", doc=InputDocumentation(doc="Extension of fasta files. (default: fasta)")), ToolInput(tag="in_input_folder", input_type=Boolean(optional=True), prefix="--input_folder", doc=InputDocumentation(doc="Folder with bins in fasta format. (default: ./)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_To_Scaffolds2Bin_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

