from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Taxmapper_Plot_V0_1_0 = CommandToolBuilder(tool="taxmapper_plot", base_command=["taxmapper", "plot"], inputs=[ToolInput(tag="in_tax_a", input_type=Array(t=String(), optional=True), prefix="--taxa", doc=InputDocumentation(doc="Taxonomy file(s), counted taxa for a taxonomic\nhierarchy")), ToolInput(tag="in_samples", input_type=Array(t=String(), optional=True), prefix="--samples", doc=InputDocumentation(doc="Optional sample names, sample names have to be in the\nsame order as taxonomy input files. If no samplenames\nare provided, the base names of the taxa file(s) will\nbe used.")), ToolInput(tag="in_freq", input_type=File(optional=True), prefix="--freq", doc=InputDocumentation(doc="Output file 1, taxon matrix with normalized\nfrequencies [default: taxa_freq_norm.tsv]")), ToolInput(tag="in_counts", input_type=File(optional=True), prefix="--counts", doc=InputDocumentation(doc="Output file 2, taxon matrix with counts [default:\ntaxa_counts.tsv]")), ToolInput(tag="in_plot", input_type=File(optional=True), prefix="--plot", doc=InputDocumentation(doc="Output file 3, stacked barplot of total count\nnormalized taxa [default: taxa_freq_norm.svg]\n"))], outputs=[ToolOutput(tag="out_freq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_freq", type_hint=File()), doc=OutputDocumentation(doc="Output file 1, taxon matrix with normalized\nfrequencies [default: taxa_freq_norm.tsv]")), ToolOutput(tag="out_counts", output_type=File(optional=True), selector=InputSelector(input_to_select="in_counts", type_hint=File()), doc=OutputDocumentation(doc="Output file 2, taxon matrix with counts [default:\ntaxa_counts.tsv]")), ToolOutput(tag="out_plot", output_type=File(optional=True), selector=InputSelector(input_to_select="in_plot", type_hint=File()), doc=OutputDocumentation(doc="Output file 3, stacked barplot of total count\nnormalized taxa [default: taxa_freq_norm.svg]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

