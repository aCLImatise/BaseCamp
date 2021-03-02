from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Buildfastaindex_Rb_V0_1_0 = CommandToolBuilder(tool="buildFastaIndex.rb", base_command=["buildFastaIndex.rb"], inputs=[ToolInput(tag="in_fast_a_file", input_type=Boolean(optional=True), prefix="--fastaFile", doc=InputDocumentation(doc="=> FASTA sequence file")), ToolInput(tag="in_f_of_file", input_type=Boolean(optional=True), prefix="--fofFile", doc=InputDocumentation(doc="=> list of fasta files")), ToolInput(tag="in_offset_file", input_type=Boolean(optional=True), prefix="--offsetFile", doc=InputDocumentation(doc="=> FASTA index files")), ToolInput(tag="in_sequence_file", input_type=Boolean(optional=True), prefix="--sequenceFile", doc=InputDocumentation(doc="=> file containing concatenated nucleotide sequence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildfastaindex_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

