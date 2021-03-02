from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Gem_Mappability_V0_1_0 = CommandToolBuilder(tool="gem_mappability", base_command=["gem-mappability"], inputs=[ToolInput(tag="in_emulate_complement", input_type=Boolean(optional=True), prefix="--emulate-complement", doc=InputDocumentation(doc="(for indices lacking it)")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_output_line_width", input_type=Int(optional=True), prefix="--output-line-width", doc=InputDocumentation(doc="(default=70)")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_approximation_threshold", input_type=Int(optional=True), prefix="--approximation-threshold", doc=InputDocumentation(doc="|'disable'\n(default: first multiple bin)")), ToolInput(tag="in_mismatch_alphabet", input_type=String(optional=True), prefix="--mismatch-alphabet", doc=InputDocumentation(doc="(default='ACGT')")), ToolInput(tag="in_mismatches__default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="|<%_mismatches>      (default=0.02)")), ToolInput(tag="in_differences__default", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="|<%_differences>  (default=0.02)")), ToolInput(tag="in_max_big_in_del_length", input_type=Int(optional=True), prefix="--max-big-indel-length", doc=InputDocumentation(doc="(default=0)")), ToolInput(tag="in_min_matched_bases", input_type=Int(optional=True), prefix="--min-matched-bases", doc=InputDocumentation(doc="|<%>        (default=0.80)")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="(default=1)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(print license)")), ToolInput(tag="in_gem_mapp_ability", input_type=String(), position=0, doc=InputDocumentation(doc="-I <index_prefix>                       (mandatory)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Mappability_V0_1_0().translate("wdl")

