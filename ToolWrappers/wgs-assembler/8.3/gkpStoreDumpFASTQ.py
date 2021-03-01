from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Gkpstoredumpfastq_V0_1_0 = CommandToolBuilder(tool="gkpStoreDumpFASTQ", base_command=["gkpStoreDumpFASTQ"], inputs=[ToolInput(tag="in_write_files_fastqprefixpairedfastq", input_type=Float(optional=True), prefix="-g", doc=InputDocumentation(doc="write files fastq-prefix.1.fastq, fastq-prefix.2.fastq, fastq-prefix.paired.fastq, fastq-prefix.unmated.fastq")), ToolInput(tag="in_output_only_fragments", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="output only fragments in library number libToDump (NOT IMPLEMENTED)")), ToolInput(tag="in_output_starting_fragment", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="output starting at fragment iid")), ToolInput(tag="in_output_stopping_fragment", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="output stopping after fragment iid")), ToolInput(tag="in_output_clear_range", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="output clear range 'clrName'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gkpstoredumpfastq_V0_1_0().translate("wdl", allow_empty_container=True)

