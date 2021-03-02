from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Negative_Training_Sampler_V0_1_0 = CommandToolBuilder(tool="negative_training_sampler", base_command=["negative_training_sampler"], inputs=[ToolInput(tag="in_label_file", input_type=File(optional=True), prefix="--label-file", doc=InputDocumentation(doc="Input bed file with labeled regions  [required]")), ToolInput(tag="in_reference_file", input_type=File(optional=True), prefix="--reference-file", doc=InputDocumentation(doc="Input genome reference in fasta format\n[required]")), ToolInput(tag="in_genome_file", input_type=File(optional=True), prefix="--genome-file", doc=InputDocumentation(doc="Input genome file of reference  [required]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Path to output file.")), ToolInput(tag="in_label_num", input_type=Int(optional=True), prefix="--label_num", doc=InputDocumentation(doc="Number of separate label columns.")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Precision of decimals when computing the\nattributes like GC content.")), ToolInput(tag="in_b_gzip", input_type=Boolean(optional=True), prefix="--bgzip", doc=InputDocumentation(doc="Output will be bgzipped.")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Write logging to this file.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Will print verbose messages.")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Sets the seed for sampling.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of used cores default: 1")), ToolInput(tag="in_memory", input_type=Int(optional=True), prefix="--memory", doc=InputDocumentation(doc="amount of memory per core (e.g. 2 cores * 2GB =\n4GB) default: 2GB"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Negative_Training_Sampler_V0_1_0().translate("wdl", allow_empty_container=True)

