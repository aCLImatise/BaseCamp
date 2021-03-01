from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Rmetl_Detection_V0_1_0 = CommandToolBuilder(tool="rMETL_detection", base_command=["rMETL", "detection"], inputs=[ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--min_support", doc=InputDocumentation(doc="Mininum number of reads that support a ME.[5]")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="Mininum length of ME to be reported.[50]")), ToolInput(tag="in_min_distance", input_type=Int(optional=True), prefix="--min_distance", doc=InputDocumentation(doc="Mininum distance of two ME signatures to be\nintergrated.[20]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use.[8]")), ToolInput(tag="in_presets", input_type=String(optional=True), prefix="--presets", doc=InputDocumentation(doc="The sequencing platform <pacbio,ont> of the\nreads.[pacbio]\n")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc="The reference genome in fasta format.")), ToolInput(tag="in_temp_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Temporary directory to use for distributed jobs.")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="Directory to output potential ME loci."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmetl_Detection_V0_1_0().translate("wdl", allow_empty_container=True)

