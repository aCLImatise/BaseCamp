from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Rnasnp_V0_1_0 = CommandToolBuilder(tool="RNAsnp", base_command=["RNAsnp"], inputs=[ToolInput(tag="in_detailed_help", input_type=Boolean(optional=True), prefix="--detailed-help", doc=InputDocumentation(doc="Print help, including all details and hidden\noptions, and exit")), ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full-help", doc=InputDocumentation(doc="Print help, including hidden options, and exit")), ToolInput(tag="in_seq", input_type=File(optional=True), prefix="--seq", doc=InputDocumentation(doc="File containing the input sequence")), ToolInput(tag="in_snp", input_type=File(optional=True), prefix="--snp", doc=InputDocumentation(doc="File containing the list of SNP")), ToolInput(tag="in_mode", input_type=Int(optional=True), prefix="--mode", doc=InputDocumentation(doc="Select the mode of operation (default=`1')\n1 - perform global folding by using RNAfold\nand compute the difference in base pair\nprobabilities for all sequence intervals\n2 - perform local folding by using RNAplfold\nand compute the difference in base pair\nprobabilities for all sequence intervals of\nfixed length\n3 - screen putative structure-disruptive SNPs\nin an RNA sequence")), ToolInput(tag="in_winsize_fold", input_type=Int(optional=True), prefix="--winsizeFold", doc=InputDocumentation(doc="length of flanking sequence on either side of\nSNP to fold  (default=`200')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnasnp_V0_1_0().translate("wdl", allow_empty_container=True)

