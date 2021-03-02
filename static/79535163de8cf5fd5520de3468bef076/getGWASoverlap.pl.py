from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Getgwasoverlap_Pl_V0_1_0 = CommandToolBuilder(tool="getGWASoverlap.pl", base_command=["getGWASoverlap.pl"], inputs=[ToolInput(tag="in_overlap_distance_default", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<#> (Overlap distance, default: 1000)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum number of significant SNPs to consider study, default: 10)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (number of threads to use, default: 1)")), ToolInput(tag="in_gregor", input_type=File(optional=True), prefix="-GREGOR", doc=InputDocumentation(doc="<path-to-Reference LD info> (perform enrichment test with GREGOR)")), ToolInput(tag="in_ld", input_type=Boolean(optional=True), prefix="-LD", doc=InputDocumentation(doc="<#> (LD threshold for 'buddy SNPs', default 0.8, must be greater than 0.7)")), ToolInput(tag="in_study_id", input_type=Boolean(optional=True), prefix="-studyID", doc=InputDocumentation(doc="<#> (only analyze this study)")), ToolInput(tag="in_study_id_file", input_type=Boolean(optional=True), prefix="-studyIDfile", doc=InputDocumentation(doc="<#> (only analyze this study)")), ToolInput(tag="in_snp_out", input_type=File(optional=True), prefix="-snpOut", doc=InputDocumentation(doc="(output overlapping snps & buddies as a BED file)")), ToolInput(tag="in_snp_out_all", input_type=Boolean(optional=True), prefix="-snpOutAll", doc=InputDocumentation(doc="(output all SNPs, even if they aren't overlapping)"))], outputs=[ToolOutput(tag="out_snp_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_snp_out", type_hint=File()), doc=OutputDocumentation(doc="(output overlapping snps & buddies as a BED file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getgwasoverlap_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

