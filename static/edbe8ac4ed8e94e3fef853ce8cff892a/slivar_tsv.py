from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Slivar_Tsv_V0_1_0 = CommandToolBuilder(tool="slivar_tsv", base_command=["slivar", "tsv"], inputs=[ToolInput(tag="in_ped", input_type=File(optional=True), prefix="--ped", doc=InputDocumentation(doc="required ped file describing the trios in the VCF")), ToolInput(tag="in_csq_field", input_type=String(optional=True), prefix="--csq-field", doc=InputDocumentation(doc="INFO field containing the gene name and impact. Usually CSQ or BCSQ")), ToolInput(tag="in_csq_column", input_type=String(optional=True), prefix="--csq-column", doc=InputDocumentation(doc="CSQ sub-field(s) to extract (in addition to gene, impact, transcript). may be specified multiple times.")), ToolInput(tag="in_sample_field", input_type=String(optional=True), prefix="--sample-field", doc=InputDocumentation(doc="INFO field(s) that contains list of samples that have passed previous filters.")), ToolInput(tag="in_gene_description", input_type=Int(optional=True), prefix="--gene-description", doc=InputDocumentation(doc="tab-separated lookup of gene (column 1) to description (column 2) to add to output. the gene is case-sensitive. can be specified multiple times")), ToolInput(tag="in_impact_order", input_type=String(optional=True), prefix="--impact-order", doc=InputDocumentation(doc="ordering of impacts to override the default (https://raw.githubusercontent.com/brentp/slivar/master/src/slivarpkg/default-order.txt)")), ToolInput(tag="in_info_field", input_type=String(optional=True), prefix="--info-field", doc=InputDocumentation(doc="INFO field(s) that should be added to output (e.g. gnomad_popmax_af)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="path to output tab-separated file (default: /dev/stdout)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="path to output tab-separated file (default: /dev/stdout)"))], container="quay.io/biocontainers/slivar:0.2.1--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slivar_Tsv_V0_1_0().translate("wdl")

