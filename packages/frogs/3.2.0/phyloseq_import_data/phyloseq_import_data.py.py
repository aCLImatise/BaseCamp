from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Phyloseq_Import_Data_Py_V0_1_0 = CommandToolBuilder(tool="phyloseq_import_data.py", base_command=["phyloseq_import_data.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_normalization", input_type=Boolean(optional=True), prefix="--normalization", doc=InputDocumentation(doc="To normalize data before analysis. Use this option if\nyou didnt do it in FROGS Abundance normalisation.\n[Default: False]")), ToolInput(tag="in_ordered_taxonomic_ranks", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[RANKS [RANKS ...]], --ranks [RANKS [RANKS ...]]\nThe ordered taxonomic ranks levels stored in BIOM.\nEach rank is separated by one space. [Default:\n['Kingdom', 'Phylum', 'Class', 'Order', 'Family',\n'Genus', 'Species']]")), ToolInput(tag="in_biom_file", input_type=File(optional=True), prefix="--biomfile", doc=InputDocumentation(doc="path to the abundance BIOM file.")), ToolInput(tag="in_sample_file", input_type=File(optional=True), prefix="--samplefile", doc=InputDocumentation(doc="path to sample file (format: TSV).")), ToolInput(tag="in_tree_file", input_type=File(optional=True), prefix="--treefile", doc=InputDocumentation(doc="path to tree file from FROGS Tree (format: Newick\n'nhx' or 'nwk' ).")), ToolInput(tag="in_r_data", input_type=File(optional=True), prefix="--rdata", doc=InputDocumentation(doc="path to store phyloseq-class object in Rdata file.\n[Default: phyloseq_data.Rdata]")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nphyloseq_import_summary.nb.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Import_Data_Py_V0_1_0().translate("wdl")

