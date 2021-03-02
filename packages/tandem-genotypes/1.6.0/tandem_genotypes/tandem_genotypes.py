from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String, Boolean

Tandem_Genotypes_V0_1_0 = CommandToolBuilder(tool="tandem_genotypes", base_command=["tandem-genotypes"], inputs=[ToolInput(tag="in_genes", input_type=File(optional=True), prefix="--genes", doc=InputDocumentation(doc="read genes from a genePred or BED file")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="output format: 1=original, 2=alleles (default=1)")), ToolInput(tag="in_mis_map", input_type=Float(optional=True), prefix="--mismap", doc=InputDocumentation(doc="ignore any alignment with mismap probability > PROB\n(default=1e-06)")), ToolInput(tag="in_post_mask", input_type=Int(optional=True), prefix="--postmask", doc=InputDocumentation(doc="ignore mostly-lowercase alignments (default=1)")), ToolInput(tag="in_promoter", input_type=Int(optional=True), prefix="--promoter", doc=InputDocumentation(doc="promoter length (default=300)")), ToolInput(tag="in_select", input_type=Int(optional=True), prefix="--select", doc=InputDocumentation(doc="select: all repeats (0), non-intergenic repeats (1),\nnon-intergenic non-intronic repeats (2) (default=0)")), ToolInput(tag="in_min_unit", input_type=Int(optional=True), prefix="--min-unit", doc=InputDocumentation(doc="ignore repeats with unit shorter than BP (default=2)")), ToolInput(tag="in_far", input_type=Int(optional=True), prefix="--far", doc=InputDocumentation(doc="require alignment >= BP beyond both sides of a repeat\n(default=100)")), ToolInput(tag="in_near", input_type=Int(optional=True), prefix="--near", doc=InputDocumentation(doc="count insertions <= BP beyond a repeat (default=60)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="L=lenient, S=strict (default=L)")), ToolInput(tag="in_scores", input_type=File(optional=True), prefix="--scores", doc=InputDocumentation(doc="importance scores for gene parts")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show more details")), ToolInput(tag="in_micro_sat_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignments_dot_maf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tandem_Genotypes_V0_1_0().translate("wdl", allow_empty_container=True)

