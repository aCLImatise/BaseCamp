from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Makenucseq_V0_1_0 = CommandToolBuilder(tool="makenucseq", base_command=["makenucseq"], inputs=[ToolInput(tag="in_codon_file", input_type=Boolean(optional=True), prefix="-codonfile", doc=InputDocumentation(doc="codon      Optional codon usage file. Nucleotide\nsequences will be created as triplets\nmatching the frequencies in the file, with\nthe end trimmed to be in the correct reading\nframe.")), ToolInput(tag="in_amount", input_type=Boolean(optional=True), prefix="-amount", doc=InputDocumentation(doc="integer    [100] Number of sequences created (Integer 1\nor more)")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="-length", doc=InputDocumentation(doc="integer    [100] Length of each sequence (Integer 1 or\nmore)")), ToolInput(tag="in_use_insert", input_type=Boolean(optional=True), prefix="-useinsert", doc=InputDocumentation(doc="toggle     [N] Do you want to make an insert")), ToolInput(tag="in_six_dot_six_dot_zero_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="Standard (Mandatory) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makenucseq_V0_1_0().translate("wdl", allow_empty_container=True)

