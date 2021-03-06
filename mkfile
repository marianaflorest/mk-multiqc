< config.mk

# Descripción de este paso del análisis.
# ¿Por qué estoy haciendo esto?
#
results/%/multiqc_report.html:	data/%/
	mkdir -p "$(dirname "$target")"
	multiqc \
		$prereq \
		-o results/$stem

# Quality Control
# ===============
#
# Here you should describe why you choose this qc.
#
qc:V:
	cd qc
	bin/targets | xargs mk

# Unit tests
# ==========
#
# Verify everything works correctly.
#
test	tests:QV:
	cd test
	rm -f tests.log
	./run_tests \
	|| less tests.log

# Clean up generated files
#
# **Cuidado: puede ocasionar pérdida de datos.**
# (todos deberían poderse regenerar, pero asegúrate de que ya no se usan).
#
clean:V:
	bin/targets | xargs rm -f
