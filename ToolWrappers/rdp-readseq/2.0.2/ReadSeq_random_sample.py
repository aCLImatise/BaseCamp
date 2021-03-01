from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Readseq_Random_Sample_V0_1_0 = CommandToolBuilder(tool="ReadSeq_random_sample", base_command=["ReadSeq", "random-sample"], inputs=[ToolInput(tag="in_num_selection", input_type=Int(optional=True), prefix="--num-selection", doc=InputDocumentation(doc="number of sequence to select for each sample. Default is the smallest sample size. Limit\nto the default value.")), ToolInput(tag="in_subregion_length", input_type=Int(optional=True), prefix="--subregion_length", doc=InputDocumentation(doc="If specified, radomly choose a subregion with the required length from the sequence.  If\na selected sequence is shorter than the specified length, that sequence will not be\nincluded in the output,  which may result in not equal number of sequences in some\nsamples.")), ToolInput(tag="in_resample_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Random_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

