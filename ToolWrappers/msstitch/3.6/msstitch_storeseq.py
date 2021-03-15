from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Msstitch_Storeseq_V0_1_0 = CommandToolBuilder(tool="msstitch_storeseq", base_command=["msstitch", "storeseq"], inputs=[ToolInput(tag="in_dbfile", input_type=File(optional=True), prefix="--dbfile", doc=InputDocumentation(doc="Database lookup file")), ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file of {} format")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_full_protein", input_type=Boolean(optional=True), prefix="--fullprotein", doc=InputDocumentation(doc="Store full protein sequences (at a minimum-match\nlength) in the SQLite file rather than tryptic\nsequences")), ToolInput(tag="in_in_source_frag", input_type=Boolean(optional=True), prefix="--insourcefrag", doc=InputDocumentation(doc="Apply filter against both intact peptides and those\nthat match to the C-terminal part of a tryptic peptide\nfrom the database, resulting from in-source\nfragmentation, where some amino acids will be missing\nfrom the N-terminus. Specify the max number of amino\nacids that may be missing. Database should be built\nwith this flag in order for the lookup to work, since\nsequences will be stored and looked up reversed")), ToolInput(tag="in_cut_proline", input_type=Boolean(optional=True), prefix="--cutproline", doc=InputDocumentation(doc="Flag to make trypsin before a proline residue. Then\nfiltering will be done against both cut and non-cut\npeptides.")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length of peptide to be included")), ToolInput(tag="in_no_trypsin", input_type=Boolean(optional=True), prefix="--notrypsin", doc=InputDocumentation(doc="Do not trypsinize. User is expected to deliver\napretrypsinized FASTA file")), ToolInput(tag="in_misc_leav", input_type=Int(optional=True), prefix="--miscleav", doc=InputDocumentation(doc="Amount of missed cleavages to allow when trypsinizing,\ndefault is 0\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/msstitch:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Storeseq_V0_1_0().translate("wdl")

