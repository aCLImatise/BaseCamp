from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Seq2Hla_V0_1_0 = CommandToolBuilder(tool="seq2HLA", base_command=["seq2HLA"], inputs=[ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="File name of #1 mates (uncompressed or gzipped fastq)")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="File name of #2 mates (uncompressed or gzipped fastq)")), ToolInput(tag="in_run_name", input_type=String(optional=True), prefix="--runName", doc=InputDocumentation(doc="Name of this HLA typing run. Wil be used throughout\nthis process as part of the name of the newly created\nfiles.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Bowtie option: Launch <int> parallel search threads.\nDefault (seq2HLA): 6")), ToolInput(tag="in_trim_three", input_type=Int(optional=True), prefix="--trim3", doc=InputDocumentation(doc="Bowtie option: -3 <int> trims <int> bases from the low\nquality 3' end of each read. Default: 0\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Hla_V0_1_0().translate("wdl", allow_empty_container=True)

