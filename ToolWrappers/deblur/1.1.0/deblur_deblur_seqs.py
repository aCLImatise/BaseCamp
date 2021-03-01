from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, String

Deblur_Deblur_Seqs_V0_1_0 = CommandToolBuilder(tool="deblur_deblur_seqs", base_command=["deblur", "deblur-seqs"], inputs=[ToolInput(tag="in_mean_error", input_type=Float(optional=True), prefix="--mean-error", doc=InputDocumentation(doc="The mean per nucleotide error, used for original\nsequence estimate. If not passed typical illumina\nerror rate is used  [default: 0.005]")), ToolInput(tag="in_error_dist", input_type=Int(optional=True), prefix="--error-dist", doc=InputDocumentation(doc="A comma separated list of error probabilities for\neach hamming distance. The length of the list\ndetermines the number of hamming distances taken\ninto account.  [default: 1, 0.06, 0.02, 0.02,\n0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001,\n0.0005]")), ToolInput(tag="in_in_del_prob", input_type=Float(optional=True), prefix="--indel-prob", doc=InputDocumentation(doc="Insertion/deletion (indel) probability (same for\nN indels)")), ToolInput(tag="in_in_del_max", input_type=Int(optional=True), prefix="--indel-max", doc=InputDocumentation(doc="Maximal indel number")), ToolInput(tag="in_log_level", input_type=Int(optional=True), prefix="--log-level", doc=InputDocumentation(doc="RANGE  Level of messages for log file(range 1-debug to")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="log file name  [default: deblur.log]")), ToolInput(tag="in_seqs_fp", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Deblur_Seqs_V0_1_0().translate("wdl", allow_empty_container=True)

