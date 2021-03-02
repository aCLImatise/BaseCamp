from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Deblur_Remove_Artifacts_V0_1_0 = CommandToolBuilder(tool="deblur_remove_artifacts", base_command=["deblur", "remove-artifacts"], inputs=[ToolInput(tag="in_ref_fp", input_type=File(optional=True), prefix="--ref-fp", doc=InputDocumentation(doc="Keep all sequences aligning to this FASTA\ndatabase (for multiple databases, use --ref-\nfp db1.fa --ref-fp db2.fa ..) default for\npositive filtering is:\n/usr/local/lib/python3.7/site-\npackages/deblur/support_files/88_otus.fasta\ndefault for negative filtering is:\n/usr/local/lib/python3.7/site-\npackages/deblur/support_files/artifacts.fa")), ToolInput(tag="in_ref_db_fp", input_type=File(optional=True), prefix="--ref-db-fp", doc=InputDocumentation(doc="Keep all sequences aligning to this indexed\ndatabase. For multiple databases, the order\nmust follow that of --ref-fp, for example,\n--ref-db-fp db1.idx --ref-db-fp db2.idx ..")), ToolInput(tag="in_only_pos", input_type=Boolean(optional=True), prefix="--only-pos", doc=InputDocumentation(doc="Use --negate (i.e. True) to discard all\nsequences aligning to the database passed\nvia --neg-ref-fp option. Alternatively, use\n--only-pos (i.e. False) to filter by only\nkeeping sequences similar to ones in --pos-\nref-fp.  [default: True]")), ToolInput(tag="in_threads_per_sample", input_type=Int(optional=True), prefix="--threads-per-sample", doc=InputDocumentation(doc="Number of threads to use per sample (0 to\nuse all)  [default: 1]")), ToolInput(tag="in_log_level", input_type=Int(optional=True), prefix="--log-level", doc=InputDocumentation(doc="RANGE       Level of messages for log file(range 1-debug\nto 5-critical  [default: 2]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="log file name  [default: deblur.log]")), ToolInput(tag="in_seqs_fp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Remove_Artifacts_V0_1_0().translate("wdl", allow_empty_container=True)

