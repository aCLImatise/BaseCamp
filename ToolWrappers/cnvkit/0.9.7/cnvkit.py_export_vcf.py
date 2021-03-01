from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Cnvkit_Py_Export_Vcf_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_export_vcf", base_command=["cnvkit.py", "export", "vcf"], inputs=[ToolInput(tag="in_cnr", input_type=String(optional=True), prefix="--cnr", doc=InputDocumentation(doc="Bin-level copy ratios (*.cnr). Used to indicate fuzzy\nboundaries for segments in the output VCF via the\nCIPOS and CIEND tags.")), ToolInput(tag="in_sample_id", input_type=File(optional=True), prefix="--sample-id", doc=InputDocumentation(doc="Sample name to write in the genotype field of the\noutput VCF file. [Default: use the sample ID, taken\nfrom the file name]")), ToolInput(tag="in_ploidy", input_type=Int(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="Ploidy of the sample cells. [Default: 2]")), ToolInput(tag="in_sample_sex", input_type=String(optional=True), prefix="--sample-sex", doc=InputDocumentation(doc="Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed from X and Y coverage).")), ToolInput(tag="in_haploid_x_reference", input_type=Boolean(optional=True), prefix="--haploid-x-reference", doc=InputDocumentation(doc="Was a male reference used? If so, expect half ploidy\non chrX and chrY; otherwise, only chrY has half\nploidy. In CNVkit, if a male reference was used, the\n'neutral' copy number (ploidy) of chrX is 1; chrY is\nhaploid for either reference sex.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n"))], outputs=[ToolOutput(tag="out_sample_id", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_id", type_hint=File()), doc=OutputDocumentation(doc="Sample name to write in the genotype field of the\noutput VCF file. [Default: use the sample ID, taken\nfrom the file name]")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Export_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

