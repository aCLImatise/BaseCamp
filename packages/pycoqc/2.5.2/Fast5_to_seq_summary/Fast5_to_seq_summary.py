from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Array, String, Boolean

Fast5_To_Seq_Summary_V0_1_0 = CommandToolBuilder(tool="Fast5_to_seq_summary", base_command=["Fast5_to_seq_summary"], inputs=[ToolInput(tag="in_fast_five_dir", input_type=Int(optional=True), prefix="--fast5_dir", doc=InputDocumentation(doc="Directory containing fast5 files. Can contain multiple\nsubdirectories")), ToolInput(tag="in_seq_summary_fn", input_type=File(optional=True), prefix="--seq_summary_fn", doc=InputDocumentation(doc="path of the summary sequencing file where to write the\ndata extracted from the fast5 files")), ToolInput(tag="in_max_fast_five", input_type=Int(optional=True), prefix="--max_fast5", doc=InputDocumentation(doc="Maximum number of file to try to parse. 0 to\ndeactivate (default: 0)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Total number of threads to use. 1 thread is used for\nthe reader and 1 for the writer. Minimum 3 (default:\n4)")), ToolInput(tag="in_base_call_id", input_type=Int(optional=True), prefix="--basecall_id", doc=InputDocumentation(doc="id of the basecalling group. By default leave to 0,\nbut if you perfome multiple basecalling on the same\nfast5 files, this can be used to indicate the\ncorresponding group (1, 2 ...) (default: 0)")), ToolInput(tag="in_fields", input_type=Array(t=String(), optional=True), prefix="--fields", doc=InputDocumentation(doc="list of field names corresponding to attributes to try\nto fetch from the fast5 files (default: ['read_id',\n'run_id', 'channel', 'start_time',\n'sequence_length_template', 'mean_qscore_template',\n'calibration_strand_genome_template',\n'barcode_arrangement'])")), ToolInput(tag="in_include_path", input_type=Boolean(optional=True), prefix="--include_path", doc=InputDocumentation(doc="If given, the absolute path to the corresponding file\nis added in an extra column (default: False)")), ToolInput(tag="in_verbose_level", input_type=Int(optional=True), prefix="--verbose_level", doc=InputDocumentation(doc="Level of verbosity, from 2 (Chatty) to 0 (Nothing)\n(default: 0)\n"))], outputs=[], container="quay.io/biocontainers/pycoqc:2.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast5_To_Seq_Summary_V0_1_0().translate("wdl")

