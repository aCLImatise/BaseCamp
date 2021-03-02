from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Interhost_Py_Snpeff_V0_1_0 = CommandToolBuilder(tool="interhost.py_snpEff", base_command=["interhost.py", "snpEff"], inputs=[ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_annotate_variants_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Annotate variants in VCF file with translation consequences using snpEff.")), ToolInput(tag="in_in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Input VCF file")), ToolInput(tag="in_genomes", input_type=String(), position=1, doc=InputDocumentation(doc="genome name (snpEff db name, or NCBI accessions)")), ToolInput(tag="in_out_vcf", input_type=String(), position=2, doc=InputDocumentation(doc="Output VCF file")), ToolInput(tag="in_your_email_address", input_type=String(), position=3, doc=InputDocumentation(doc="Your email address. To access the Genbank\nCoreNucleotide database, NCBI requires you to specify\nyour email address with each request. In case of\nexcessive usage of the E-utilities, NCBI will attempt\nto contact a user at the email address provided before\nblocking access."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interhost_Py_Snpeff_V0_1_0().translate("wdl", allow_empty_container=True)

