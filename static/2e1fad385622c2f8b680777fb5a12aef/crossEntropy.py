from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Crossentropy_V0_1_0 = CommandToolBuilder(tool="crossEntropy", base_command=["crossEntropy"], inputs=[ToolInput(tag="in_genotype_file_format", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="-- genotype file (in .geno format)")), ToolInput(tag="in__number_ancestral", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc="-- the number of ancestral populations")), ToolInput(tag="in__diploid_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="-- 1 if haploid, 2 if diploid              (default: 2)")), ToolInput(tag="in_individual_admixture_coefficient", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="-- individual admixture coefficient file (default: genotype_file_I.K.Q)")), ToolInput(tag="in_ancestral_genotype_frequency", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="-- ancestral genotype frequency file       (default: genotype_file_I.K.G)")), ToolInput(tag="in_genotype_file_genotypefileigeno", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="-- genotype file with masked genotypes     (default: genotype_file_I.geno)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossentropy_V0_1_0().translate("wdl", allow_empty_container=True)

