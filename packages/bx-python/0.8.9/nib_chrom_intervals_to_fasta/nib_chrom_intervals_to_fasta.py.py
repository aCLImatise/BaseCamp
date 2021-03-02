from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nib_Chrom_Intervals_To_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="nib_chrom_intervals_to_fasta.py", base_command=["nib_chrom_intervals_to_fasta.py"], inputs=[ToolInput(tag="in_nib_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nib_Chrom_Intervals_To_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

