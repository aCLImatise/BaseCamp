from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Fml_Asm_V0_1_0 = CommandToolBuilder(tool="fml_asm", base_command=["fml-asm"], inputs=[ToolInput(tag="in_kmer_length_disable", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="k-mer length for error correction (0 for auto; -1 to disable) [0]")), ToolInput(tag="in_range_read_thresholds", input_type=Int(), prefix="-c", doc=InputDocumentation(doc="range of k-mer & read count thresholds for ec and graph cleaning [4,8]")), ToolInput(tag="in_min_overlap_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min overlap length during initial assembly [33]")), ToolInput(tag="in_drop_overlap_is", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc="drop an overlap if its length is below maxOvlpLen*FLOAT [0.7]")), ToolInput(tag="in_number_threads_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (don't use multi-threading for small data sets) [1]")), ToolInput(tag="in_discard_heterozygotes_apply", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="discard heterozygotes (apply this to assemble bacterial genomes)")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fml_Asm_V0_1_0().translate("wdl", allow_empty_container=True)

