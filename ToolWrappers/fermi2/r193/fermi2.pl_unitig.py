from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Fermi2_Pl_Unitig_V0_1_0 = CommandToolBuilder(tool="fermi2.pl_unitig", base_command=["fermi2.pl", "unitig"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output prefix [fmdef]")), ToolInput(tag="in_approximate_genome_size", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="approximate genome size [100m]")), ToolInput(tag="in_pass_error_correction", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="2-pass error correction")), ToolInput(tag="in_primary_read_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="primary read length [101]")), ToolInput(tag="in_use_intmer_posttrimmingfiltering", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="use INT-mer for post-trimming/filtering [61]")), ToolInput(tag="in_min_overlap_length_unitig", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="min overlap length during unitig construction [based on -l]")), ToolInput(tag="in_min_overlap_length_graph", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="min overlap length during graph cleaning [based on -l]")), ToolInput(tag="in_min_overlap_length_unambiguous", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="min overlap length for unambiguous merging [based on -l]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [4]")), ToolInput(tag="in_apply_error_correction", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="don't apply error correction")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_fermi_two_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Pl_Unitig_V0_1_0().translate("wdl", allow_empty_container=True)

