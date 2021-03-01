from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Index_Fasta_File_V0_1_0 = CommandToolBuilder(tool="index_fasta_file", base_command=["index-fasta-file"], inputs=[ToolInput(tag="in_index_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_filename", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Fasta_File_V0_1_0().translate("wdl")

