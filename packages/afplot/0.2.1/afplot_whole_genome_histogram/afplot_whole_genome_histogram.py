from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Afplot_Whole_Genome_Histogram_V0_1_0 = CommandToolBuilder(tool="afplot_whole_genome_histogram", base_command=["afplot", "whole-genome", "histogram"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output file  [required]")), ToolInput(tag="in_exclude_pattern", input_type=String(optional=True), prefix="--exclude-pattern", doc=InputDocumentation(doc="Regex pattern(s) to exclude from contig list")), ToolInput(tag="in_sample", input_type=File(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample name(s) of VCF file(s). If not given,\nwill use fist sample in each VCF File")), ToolInput(tag="in_label", input_type=File(optional=True), prefix="--label", doc=InputDocumentation(doc="Label(s) to VCF file(s)  [required]")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Path(s) to input VCF file(s)  [required]")), ToolInput(tag="in_color_palette", input_type=String(optional=True), prefix="--color-palette", doc=InputDocumentation(doc="The name of a color palette to pass to")), ToolInput(tag="in_kde_only", input_type=Boolean(optional=True), prefix="--kde-only", doc=InputDocumentation(doc="Only show kernel density plot")), ToolInput(tag="in_seaborn_dot_set_palette", input_type=String(), position=0, doc=InputDocumentation(doc="--dpi INTEGER               DPI for output PNGs (default: 300)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Afplot_Whole_Genome_Histogram_V0_1_0().translate("wdl", allow_empty_container=True)

