from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Phyloseq_Composition_Py_V0_1_0 = CommandToolBuilder(tool="phyloseq_composition.py", base_command=["phyloseq_composition.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var_exp", input_type=String(optional=True), prefix="--varExp", doc=InputDocumentation(doc="The experiment variable used to split plot.")), ToolInput(tag="in_taxa_rank_one", input_type=Int(optional=True), prefix="--taxaRank1", doc=InputDocumentation(doc="Select taxonomic rank name to subset your data. [ex:\nKingdom]")), ToolInput(tag="in_s_one", input_type=Boolean(optional=True), prefix="-s1", doc=InputDocumentation(doc="[TAXASET1 [TAXASET1 ...]], --taxaSet1 [TAXASET1 [TAXASET1 ...]]\nSelect taxon name among taxaRank1 to subset your data.\n[ex: Bacteria]")), ToolInput(tag="in_taxa_rank_two", input_type=Int(optional=True), prefix="--taxaRank2", doc=InputDocumentation(doc="Select sub taxonomic rank name to aggregate your data.\n[ex: Phylum]'")), ToolInput(tag="in_number_of_tax_a", input_type=Int(optional=True), prefix="--numberOfTaxa", doc=InputDocumentation(doc="The number of the most abundant taxa to keep at\ntaxaRank2. [ex: 9]'")), ToolInput(tag="in_r_data", input_type=File(optional=True), prefix="--rdata", doc=InputDocumentation(doc="The path of RData file containing a phyloseq object-\nthe result of FROGS Phyloseq Import Data")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nphyloseq_composition.nb.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Composition_Py_V0_1_0().translate("wdl")

