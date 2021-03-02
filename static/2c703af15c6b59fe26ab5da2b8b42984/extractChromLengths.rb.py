from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Extractchromlengths_Rb_V0_1_0 = CommandToolBuilder(tool="extractChromLengths.rb", base_command=["extractChromLengths.rb"], inputs=[ToolInput(tag="in_fast_a_file", input_type=Boolean(optional=True), prefix="--fastaFile", doc=InputDocumentation(doc="=> FASTA sequence file")), ToolInput(tag="in_output_file", input_type=Boolean(optional=True), prefix="--outputFile", doc=InputDocumentation(doc="=> FASTA index files")), ToolInput(tag="in_extract_chrom_lengths", input_type=String(), position=0, doc=InputDocumentation(doc="-r ref.fa -o ref.chroms.txt "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractchromlengths_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

