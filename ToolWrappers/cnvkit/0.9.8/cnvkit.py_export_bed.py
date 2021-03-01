from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Cnvkit_Py_Export_Bed_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_export_bed", base_command=["cnvkit.py", "export", "bed"], inputs=[ToolInput(tag="in_sample_id", input_type=File(optional=True), prefix="--sample-id", doc=InputDocumentation(doc="Identifier to write in the 4th column of the BED file.\n[Default: use the sample ID, taken from the file name]")), ToolInput(tag="in_label_genes", input_type=Boolean(optional=True), prefix="--label-genes", doc=InputDocumentation(doc="Show gene names in the 4th column of the BED file.\n(This is a bad idea if >1 input files are given.)")), ToolInput(tag="in_ploidy", input_type=Int(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="Ploidy of the sample cells. [Default: 2]")), ToolInput(tag="in_sample_sex", input_type=String(optional=True), prefix="--sample-sex", doc=InputDocumentation(doc="Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed from X and Y coverage).")), ToolInput(tag="in_show", input_type=String(optional=True), prefix="--show", doc=InputDocumentation(doc="Which segmented regions to show: 'all' = all segment\nregions; 'variant' = CNA regions with non-neutral copy\nnumber; 'ploidy' = CNA regions with non-default\nploidy. [Default: ploidy]")), ToolInput(tag="in_haploid_x_reference", input_type=Boolean(optional=True), prefix="--haploid-x-reference", doc=InputDocumentation(doc="Was a male reference used? If so, expect half ploidy\non chrX and chrY; otherwise, only chrY has half\nploidy. In CNVkit, if a male reference was used, the\n'neutral' copy number (ploidy) of chrX is 1; chrY is\nhaploid for either reference sex.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n")), ToolInput(tag="in_segments", input_type=String(), position=0, doc=InputDocumentation(doc="Segmented copy ratio data files (*.cns), the output of\nthe 'segment' or 'call' sub-commands."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Export_Bed_V0_1_0().translate("wdl")

