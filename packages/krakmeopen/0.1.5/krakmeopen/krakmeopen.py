from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Krakmeopen_V0_1_0 = CommandToolBuilder(tool="krakmeopen", base_command=["krakmeopen"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Kraken2 read-by-read classifications file.")), ToolInput(tag="in_input_pickle", input_type=File(optional=True), prefix="--input_pickle", doc=InputDocumentation(doc="A pickle file containing kmer tallies, produced with")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The file to write the quality metrics output to.")), ToolInput(tag="in_output_pickle", input_type=File(optional=True), prefix="--output_pickle", doc=InputDocumentation(doc="The pickle file to write kmer tallies to. Use this\nargument to supress calculation of quality metrics and\nonly output kmer counts to a pickled file. Input the\npickled file using --input_pickle.")), ToolInput(tag="in_km_er_tally_table", input_type=File(optional=True), prefix="--kmer_tally_table", doc=InputDocumentation(doc="File to output the complete kmer tally table for each\ntax ID to. Optional.")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="NCBI style taxonomy names dump file (names.dmp).")), ToolInput(tag="in_tax_id_file", input_type=File(optional=True), prefix="--tax_id_file", doc=InputDocumentation(doc="Supply multiple taxonomic IDs at once. A textfile with\none taxonomic ID per line. Calculate quality metrics\nfor the clades rooted at the taxonomic IDs in the\nfile."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The file to write the quality metrics output to.")), ToolOutput(tag="out_km_er_tally_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_km_er_tally_table", type_hint=File()), doc=OutputDocumentation(doc="File to output the complete kmer tally table for each\ntax ID to. Optional."))], container="quay.io/biocontainers/krakmeopen:0.1.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Krakmeopen_V0_1_0().translate("wdl")

