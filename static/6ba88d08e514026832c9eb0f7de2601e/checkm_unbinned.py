from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Boolean, String

Checkm_Unbinned_V0_1_0 = CommandToolBuilder(tool="checkm_unbinned", base_command=["checkm", "unbinned"], inputs=[ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_min_seq_len", input_type=Int(optional=True), prefix="--min_seq_len", doc=InputDocumentation(doc="required length of sequence")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_bin_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc="sequences used to generate bins (fasta format)")), ToolInput(tag="in_output_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc="write unbinned sequences to file")), ToolInput(tag="in_output_stats_file", input_type=String(), position=3, doc=InputDocumentation(doc="write unbinned sequence statistics to file"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Unbinned_V0_1_0().translate("wdl")

