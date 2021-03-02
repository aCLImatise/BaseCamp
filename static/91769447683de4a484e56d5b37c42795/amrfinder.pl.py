from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Int

Amrfinder_Pl_V0_1_0 = CommandToolBuilder(tool="amrfinder.pl", base_command=["amrfinder.pl"], inputs=[ToolInput(tag="in_update_data", input_type=String(optional=True), prefix="--update_data", doc=InputDocumentation(doc="AMRFinder database by downloading latest version\nfrom the NCBI ftp site")), ToolInput(tag="in_database", input_type=Directory(optional=True), prefix="--database", doc=InputDocumentation(doc="Directory containing the AMR database")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="tabfile output to this file instead of STDOUT")), ToolInput(tag="in_quiet", input_type=String(optional=True), prefix="--quiet", doc=InputDocumentation(doc="'t print status messages to STDERR")), ToolInput(tag="in_protein", input_type=String(optional=True), prefix="--protein", doc=InputDocumentation(doc="Amino-acid sequences to search using BLASTP and")), ToolInput(tag="in_genomic_sequence_search", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="genomic sequence to search using blastx")), ToolInput(tag="in_minimum_proportion_identical", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Minimum proportion identical translated AA residues")), ToolInput(tag="in_minimum_coverage_reference", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Minimum coverage of reference protein sequence for\na 'BLASTX' match vs. a 'PARTIALX' match")), ToolInput(tag="in_translation_table_meaning", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Translation table for blastx, for options and their meaning see:\nhttps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\n")), ToolInput(tag="in_hmmer", input_type=String(), position=0, doc=InputDocumentation(doc="-g <gff> GFF file indicating genomic location for proteins in -p <protein>"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="tabfile output to this file instead of STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amrfinder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

