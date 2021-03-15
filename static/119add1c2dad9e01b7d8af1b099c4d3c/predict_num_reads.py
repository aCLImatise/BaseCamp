from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Predict_Num_Reads_V0_1_0 = CommandToolBuilder(tool="predict_num_reads", base_command=["predict_num_reads"], inputs=[ToolInput(tag="in_length_sliding_window", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Length of the sliding window for emulating read trimming\n(default: 10)")), ToolInput(tag="in_qual", input_type=Int(optional=True), prefix="--qual", doc=InputDocumentation(doc="Quality threshold for emulating read trimming (default:\n30)")), ToolInput(tag="in_threshold_read_counts", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Threshold on the read counts (default: 25000)")), ToolInput(tag="in_read_length_specify", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Read length. If not specify estimated for every read\nindependently (default: None)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name (default: output.tsv)")), ToolInput(tag="in_patientsample_identifier_default", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Patient/sample identifier (default: None)")), ToolInput(tag="in_sample_date_default", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="Sample date (default: None)")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="FASTQ files for forward and reverse reads"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name (default: output.tsv)"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Predict_Num_Reads_V0_1_0().translate("wdl")

