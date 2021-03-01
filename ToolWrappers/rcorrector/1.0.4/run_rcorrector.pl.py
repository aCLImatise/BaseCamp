from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Boolean

Run_Rcorrector_Pl_V0_1_0 = CommandToolBuilder(tool="run_rcorrector.pl", base_command=["run_rcorrector.pl"], inputs=[ToolInput(tag="in_comma_separated_files", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=": comma separated files for single-end data sets")), ToolInput(tag="in_comma_separated_first", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc=": comma separated files for the first mate in the paried-end data sets")), ToolInput(tag="in_comma_separated_second", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc=": comma separated files for the second mate in the paired-end data sets")), ToolInput(tag="in_comma_sperated_files", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=": comma sperated files for interleaved paired-end data sets")), ToolInput(tag="in_max_cork", input_type=Int(optional=True), prefix="-maxcorK", doc=InputDocumentation(doc=": the maximum number of correction within k-bp window (default: 4)")), ToolInput(tag="in_wk", input_type=Float(optional=True), prefix="-wk", doc=InputDocumentation(doc=": the proportion of kmers that are used to estimate weak kmer count threshold, lower for more divergent genome (default: 0.95)")), ToolInput(tag="in_ek", input_type=Int(optional=True), prefix="-ek", doc=InputDocumentation(doc=": does not affect the correctness of program but affect the memory usage (default: 100000000)")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="-stdout", doc=InputDocumentation(doc=": output the corrected reads to stdout (default: not used)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc=": output some correction information to stdout (default: not used)")), ToolInput(tag="in_stage", input_type=Int(optional=True), prefix="-stage", doc=InputDocumentation(doc=": start from which stage (default: 0)\n0-start from begining(storing kmers in bloom filter);\n1-start from count kmers showed up in bloom filter;\n2-start from dumping kmer counts into a jf_dump file;\n3-start from error correction.\n")), ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Rcorrector_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

