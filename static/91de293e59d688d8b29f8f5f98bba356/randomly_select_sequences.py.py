from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Randomly_Select_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="randomly_select_sequences.py", base_command=["randomly_select_sequences.py"], inputs=[ToolInput(tag="in_outputprefix", input_type=File(), position=0, doc=InputDocumentation(doc="output_prefix")), ToolInput(tag="in_positional_arguments", input_type=String(), position=1, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_input_fastafastq_filename", input_type=File(), position=2, doc=InputDocumentation(doc="Input fasta/fastq filename")), ToolInput(tag="in_output_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="Output file prefix")), ToolInput(tag="in_subsample_size", input_type=String(), position=4, doc=InputDocumentation(doc="Subsample size"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomly_Select_Sequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

