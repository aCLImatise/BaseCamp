from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Phyloflash_Barplot_R_V0_1_0 = CommandToolBuilder(tool="phyloFlash_barplot.R", base_command=["phyloFlash_barplot.R"], inputs=[ToolInput(tag="in_top_tax_a", input_type=Int(optional=True), prefix="--toptaxa", doc=InputDocumentation(doc="Number of taxa to display in the barplot. By default takes the top 10\nby total proportional abundance in the library")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="CSV file containing three columns: Taxon, sample, and counts")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Name of output PDF or PNG file")), ToolInput(tag="in_palette", input_type=Int(optional=True), prefix="--palette", doc=InputDocumentation(doc="Palette name for taxon colors. One of the qualitative palettes from the\nColorBrewer2 set: Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, or Set3.")), ToolInput(tag="in_subset", input_type=String(optional=True), prefix="--subset", doc=InputDocumentation(doc="Display only subset from this taxon (e.g. show only Bacteria). Supply\nfull taxon string prefix, excluding trailing semicolon.")), ToolInput(tag="in_raw_val", input_type=Boolean(optional=True), prefix="--rawval", doc=InputDocumentation(doc="Plot raw counts rather than proportions")), ToolInput(tag="in_scale_plot_width", input_type=Int(optional=True), prefix="--scaleplotwidth", doc=InputDocumentation(doc="Change the plot width by this scaling factor (e.g. 2 makes it twice\nas wide). Allows adjustment when bars are hidden because the\nlegend labels are too long."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Name of output PDF or PNG file"))], container="quay.io/biocontainers/phyloflash:3.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloflash_Barplot_R_V0_1_0().translate("wdl")

