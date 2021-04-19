from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Graphtyper_V0_1_0 = CommandToolBuilder(tool="graphtyper", base_command=["graphtyper"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="or -lvalue\nSet path to log file.")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set to output verbose logging.")), ToolInput(tag="in_v_verbose", input_type=Boolean(optional=True), prefix="--vverbose", doc=InputDocumentation(doc="Set to output very verbose logging.")), ToolInput(tag="in_graph_type_r", input_type=String(), position=0, doc=InputDocumentation(doc="USAGE")), ToolInput(tag="in_bam_shrink", input_type=String(), position=0, doc=InputDocumentation(doc="Run bamShrink.")), ToolInput(tag="in_call", input_type=String(), position=1, doc=InputDocumentation(doc="Call variants of a graph.")), ToolInput(tag="in_check", input_type=String(), position=2, doc=InputDocumentation(doc="Check a GraphTyper graph (useful for debugging).")), ToolInput(tag="in_construct", input_type=String(), position=3, doc=InputDocumentation(doc="Construct a graph.")), ToolInput(tag="in_genotype", input_type=String(), position=4, doc=InputDocumentation(doc="Run the SNP/indel genotyping pipeline.")), ToolInput(tag="in_genotype_camo_u", input_type=String(), position=5, doc=InputDocumentation(doc="(WIP) Run the camou SNP/indel genotyping pipeline.")), ToolInput(tag="in_genotype_hla", input_type=String(), position=6, doc=InputDocumentation(doc="(WIP) Run the camou HLA genotyping pipeline.")), ToolInput(tag="in_genotype_lr", input_type=String(), position=7, doc=InputDocumentation(doc="(WIP) Run the camou LR genotyping pipeline.")), ToolInput(tag="in_genotype_sv", input_type=String(), position=8, doc=InputDocumentation(doc="Run the structural variant (SV) genotyping pipeline.")), ToolInput(tag="in_index", input_type=String(), position=9, doc=InputDocumentation(doc="(deprecated) Index a graph.")), ToolInput(tag="in_vcf_break_down", input_type=String(), position=10, doc=InputDocumentation(doc="Break down/decompose a VCF file.")), ToolInput(tag="in_vcf_merge", input_type=String(), position=0, doc=InputDocumentation(doc="Merge VCF files."))], outputs=[], container="quay.io/biocontainers/graphtyper:2.7.1--h655f165_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphtyper_V0_1_0().translate("wdl")

