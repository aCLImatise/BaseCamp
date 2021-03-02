from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Cfsan_Snp_Pipeline_Map_Reads_V0_1_0 = CommandToolBuilder(tool="cfsan_snp_pipeline_map_reads", base_command=["cfsan_snp_pipeline", "map_reads"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result files already exist\nand are newer than inputs (default: False)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU cores to use (default: 8)")), ToolInput(tag="in_reference_file", input_type=String(), position=0, doc=InputDocumentation(doc="Relative or absolute path to the reference fasta file")), ToolInput(tag="in_sample_fast_q_file_one", input_type=Int(), position=1, doc=InputDocumentation(doc="Relative or absolute path to the fastq file")), ToolInput(tag="in_sample_fast_q_file_two", input_type=Int(), position=2, doc=InputDocumentation(doc="Optional relative or absolute path to the mate fastq\nfile, if paired (default: None)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfsan_Snp_Pipeline_Map_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

