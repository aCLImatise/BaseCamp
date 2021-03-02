from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, File, String, Int

Dudesdb_Py_V0_1_0 = CommandToolBuilder(tool="DUDesDB.py", base_command=["DUDesDB.py"], inputs=[ToolInput(tag="in_uses_gi_likegirefnc", input_type=Float(optional=True), prefix="-m", doc=InputDocumentation(doc="'gi' uses the GI as the identifier (For headers like:\n>gi|158333233|ref|NC_009925.1|) [NCBI is phasing out\nsequence GI numbers in September 2016]. 'av' uses the\naccession.version as the identifier (for headers like:\n>NC_013791.2). Default: 'av'")), ToolInput(tag="in_reference_fasta_files", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[<fasta_files> [<fasta_files> ...]]\nReference fasta file(s) for header extraction only,\nplain or gzipped - the same file used to generate the\nread mapping index. Each sequence header '>' should\ncontain a identifier as defined in the reference mode.")), ToolInput(tag="in_reference_d_taxid", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[<ref2tax_files> [<ref2tax_files> ...]]\nreference id to taxid file(s):\n'gi_taxid_nucl.dmp[.gz]' --> 'gi' mode,\n'*.accession2taxid[.gz]' --> 'av' mode [from NCBI\ntaxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]")), ToolInput(tag="in_nodesdmp_file_ncbi", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="nodes.dmp file [from NCBI taxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]")), ToolInput(tag="in_namesdmp_file_ncbi", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="names.dmp file [from NCBI taxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]")), ToolInput(tag="in_output_prefix_dudesdb", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix. Default: dudesdb")), ToolInput(tag="in__threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="# of threads. Default: 1")), ToolInput(tag="in_show_programs_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show program's version number and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dudesdb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

