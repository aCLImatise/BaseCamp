from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ccmetagen_Extract_Seqs_Py_V0_1_0 = CommandToolBuilder(tool="CCMetagen_extract_seqs.py", base_command=["CCMetagen_extract_seqs.py"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="[-o OUTPUT_FP]")), ToolInput(tag="in_input_frags", input_type=File(optional=True), prefix="--input_frags", doc=InputDocumentation(doc="The path to the file containing frags (decompressed)")), ToolInput(tag="in_input_ccme_tagen", input_type=File(optional=True), prefix="--input_ccmetagen", doc=InputDocumentation(doc="The path to the ccmetagen result csv file")), ToolInput(tag="in_taxonomic_level", input_type=String(optional=True), prefix="--taxonomic_level", doc=InputDocumentation(doc="Taxonomic level to merge the results. Options:\nSpecies, Genus, Family, Order, Class, Phylum, Kingdom\nand Superkingdom")), ToolInput(tag="in_tax_on", input_type=String(optional=True), prefix="--taxon", doc=InputDocumentation(doc="Taxon for which you want to extract sequences. Use\nquotation marks to specify species (e.g. -t\n'Escherichia coli')")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="Path to the output file. Default = wanted_taxon_seqs\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file. Default = wanted_taxon_seqs\n"))], container="quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccmetagen_Extract_Seqs_Py_V0_1_0().translate("wdl")

