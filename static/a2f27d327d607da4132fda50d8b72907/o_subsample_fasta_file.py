from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

O_Subsample_Fasta_File_V0_1_0 = CommandToolBuilder(tool="o_subsample_fasta_file", base_command=["o-subsample-fasta-file"], inputs=[ToolInput(tag="in_fasta_file_subsample", input_type=File(), position=0, doc=InputDocumentation(doc="FASTA file to subsample")), ToolInput(tag="in_integer", input_type=Int(), position=1, doc=InputDocumentation(doc="Number of random reads to keep for each sample in the new FASTA")), ToolInput(tag="in_file_output_file", input_type=File(), position=2, doc=InputDocumentation(doc="FILE        Output file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Subsample_Fasta_File_V0_1_0().translate("wdl", allow_empty_container=True)

