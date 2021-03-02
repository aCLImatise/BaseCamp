from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float, Boolean

Kmerstream_V0_1_0 = CommandToolBuilder(tool="KmerStream", base_command=["KmerStream"], inputs=[ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="Size of k-mers, either a single value or comma separated list")), ToolInput(tag="in_quality_cut_off", input_type=Int(optional=True), prefix="--quality-cutoff", doc=InputDocumentation(doc="Comma separated list, keep k-mers with bases above quality threshold in PHRED (default 0)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Filename for output")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="Error rate guaranteed (default value 0.01)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="SNumber of threads to use (default value 1)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Seed value for the randomness (default value 0, use time based randomness)")), ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="Input is in BAM format (default false)\n--binary             Output is written in binary format (default false)\n--tsv                Output is written in TSV format (default false)\n--verbose            Print lots of messages during run\n--online             Prints out estimates every 100K reads\n--q64                set if PHRED+64 scores are used (@...h) default used PHRED+33\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Filename for output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmerstream_V0_1_0().translate("wdl", allow_empty_container=True)

